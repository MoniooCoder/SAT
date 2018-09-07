
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import java.util.ArrayList;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.glassfish.jersey.client.ClientResponse;
import sun.misc.BASE64Encoder;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author user
 */
public class jsonparser {

    public static void main(String[] args) throws JSONException {
        String url = "http://192.168.40.139/rest/insight/1.0/iql/objects";

        String name = "volkan";

        String password = "volkan";

        String authString = name + ":" + password;

        String authStringEnc = new BASE64Encoder().encode(authString.getBytes());

        System.out.println("Base64 encoded auth string: " + authStringEnc);

        Client restClient = Client.create();

        WebResource webResource = restClient.resource(url);

        ClientResponse resp = webResource.accept("application/json")
                .header("Authorization", "Basic " + authStringEnc)
                .get(ClientResponse.class);

        if (resp.getStatus() != 200) {

            System.err.println("Unable to connect to the server");

        }

        String output;

        output = (String) resp.getEntity();

        JSONObject jsonObject = new JSONObject(output);

        JSONArray tsmresponse = (JSONArray) jsonObject.get("objectEntries");

        ArrayList<String> list = new ArrayList<String>();

        for (int i = 0; i < tsmresponse.length(); i++) {

            list.add(tsmresponse.getJSONObject(i).getString("attributes"));
            for (int x = 0; x < list.size(); x++) {
                list.add(tsmresponse.getJSONObject(x).getString("objectAttributeValues"));
            }

        }

        /*for(String attributes : list){
            if(attributes.startsWith("value")){
                list.add(attributes);
            }
            
        }
         */
        System.out.println(list);

    }
}
