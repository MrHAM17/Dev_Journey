package com.safebankmobilebankingapp.app.modules.history.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.databinding.RowSeventynineBinding
import com.safebankmobilebankingapp.app.modules.history.`data`.model.SeventynineRowModel
import kotlin.Int
import kotlin.collections.List

class SeventyNineAdapter(
  var list: List<SeventynineRowModel>
) : RecyclerView.Adapter<SeventyNineAdapter.RowSeventynineVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSeventynineVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_seventynine,parent,false)
    return RowSeventynineVH(view)
  }

  override fun onBindViewHolder(holder: RowSeventynineVH, position: Int) {
    val seventynineRowModel = SeventynineRowModel()
    // TODO uncomment following line after integration with data source
    // val seventynineRowModel = list[position]
    holder.binding.seventynineRowModel = seventynineRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SeventynineRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: SeventynineRowModel
    ) {
    }
  }

  inner class RowSeventynineVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSeventynineBinding = RowSeventynineBinding.bind(itemView)
  }
}
